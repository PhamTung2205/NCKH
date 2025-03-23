function toggleChat() {
    const chatBox = document.getElementById('chatBox');
    if (chatBox.style.display === 'none' || chatBox.style.display === '') {
        chatBox.style.display = 'block';
    } else {
        chatBox.style.display = 'none';
    }
}
let JsonDataPost = [];
let i = 1;
let Acc = "";
let chatHistory = {};
let currentChatIndex = null;
function initializeChat() {
    let storedHistory = localStorage.getItem("chatHistory");
    if (storedHistory) {
        chatHistory = JSON.parse(storedHistory);
        if (chatHistory[Acc] && chatHistory[Acc].length > 0) {
            currentChatIndex = chatHistory[Acc].length - 1;
            JsonDataPost = [...chatHistory[Acc][currentChatIndex]];
            i = JsonDataPost.length + 1;

            renderChat();
        }
    }
}

async function SubmitAPI() {
    const inputText = document.getElementById("chatInput").value;
    if (!inputText) return;

    var content = document.getElementById("chatBody");

    // Hiển thị tin nhắn của User
    var userDisplay = document.createElement("div");
    userDisplay.className = "user-display";
    var p1 = document.createElement("p");
    p1.className = "user-chat text";
    p1.innerText = inputText;
    userDisplay.appendChild(p1);
    content.appendChild(userDisplay);

    // Xóa nội dung ô nhập
    document.getElementById("chatInput").value = "";

    // Tạo dữ liệu API
    var prompt = "Bạn là một chat bot chuyên gia du lịch Việt Nam" +
        "Chỉ trả lời các câu hỏi liên quan đến du lịch, bao gồm địa điểm, cách di chuyển, hoạt động và gợi ý." +
        "Nếu câu hỏi không liên quan đến du lịch : 'Xin lỗi, mình chỉ trả lời những câu hỏi về du lịch thôi nhé !!'" +
        "Trả lời đa ngôn ngữ đúng với tiếng người dùng hỏi một cách chi tiết:";
    const payload = {
        contents: JsonDataPost.map(j => ([{
            role: "user", parts: [{ text: prompt + j.user }]
        },
        { role: "model", parts: [{ text: j.bot }] }])).flat().concat([{

            role: "user", parts: [{ text: prompt + inputText }]
        }]),
        generationConfig: { temperature: 1, topK: 40, topP: 0.95, maxOutputTokens: 1000, responseMimeType: "text/plain" }
    };

    try {
        const response = await fetch(`https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash-exp:generateContent?key=AIzaSyAjT0xeG-D8h3HZZ7NSGqvfPtApAARBpKg`, {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify(payload)
        });

        if (!response.ok) throw new Error(`Lỗi: ${response.status}`);
        const data = await response.json();
        const htmlContent = marked.parse(data.candidates[0].content.parts[0].text);

        // Hiển thị phản hồi của bot
        var botDisplay = document.createElement("div");
        botDisplay.className = "bot-display";
        var p2 = document.createElement("p");
        p2.className = "bot-chat text";
        p2.innerHTML = htmlContent;
        botDisplay.appendChild(p2);
        content.appendChild(botDisplay);

        // Lưu tin nhắn
        JsonDataPost.push({ id: i++, user: inputText, bot: htmlContent, date: new Date(), idUser: 1 });

        // Lưu vào lịch sử
        saveChatHistory();

    } catch (error) {
        var p3 = document.createElement("p");
        p3.className = "bot-chat text";
        p3.innerText = `Lỗi: ${error.message}`;
        content.appendChild(p3);
    }
}

// 🟢 HÀM LƯU LỊCH SỬ CHAT
function saveChatHistory() {
    chatHistory[Acc] = chatHistory[Acc] || [];

    if (currentChatIndex !== null) {
        // Nếu đã có cuộc trò chuyện, cập nhật tin nhắn vào cuộc trò chuyện đó
        chatHistory[Acc][currentChatIndex] = [...JsonDataPost];
    } else {
        // Nếu là cuộc trò chuyện mới, thêm vào danh sách
        currentChatIndex = chatHistory[Acc].length;
        chatHistory[Acc].push([...JsonDataPost]);
    }

    localStorage.setItem("chatHistory", JSON.stringify(chatHistory));
}
//New chat
function newChat() {
    if (JsonDataPost.length > 0) {
        saveChatHistory();
    }
    // Reset dữ liệu cho cuộc trò chuyện mới
    JsonDataPost = [];
    i = 1;
    currentChatIndex = chatHistory[Acc].length; // Đặt index mới
    document.getElementById("chatBody").innerHTML = "";
}
// 🟢 HÀM TẢI CUỘC TRÒ CHUYỆN
function loadChat(index) {
    if (!chatHistory[Acc] || !chatHistory[Acc][index]) return;

    JsonDataPost = [...chatHistory[Acc][index]];
    currentChatIndex = index;
    i = JsonDataPost.length + 1;

    renderChat();
}

// 🟢 HÀM HIỂN THỊ NỘI DUNG CHAT
function renderChat() {
    document.getElementById("chatBody").innerHTML = JsonDataPost.map(chat => `
        <div class="user-display"><p class="user-chat">${chat.user}</p></div>
        <div class="bot-display"><p class="bot-chat">${chat.bot}</p></div>`).join("");
}
console.log(chatHistory);
// 🟢 SỰ KIỆN ENTER ĐỂ GỬI TIN NHẮN
document.getElementById("chatInput").addEventListener("keypress", function (event) {
    if (event.key === "Enter") SubmitAPI();
});
// 🟢 KHỞI CHẠY KHI TẢI TRANG
initializeChat();