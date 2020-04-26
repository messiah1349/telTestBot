import telebot
token = '1146786890:AAEPxzDPtN8zhbR_FmbYiVMOxaLrECxlUSM'
bot = telebot.TeleBot(token)

@bot.message_handler(commands=['help', 'start'])
def send_welcome(message):
    msg = bot.send_message(message.chat.id, 'Привет! Я codex_bot!')

@bot.message_handler(commands=['auth'])
def send_auth(message):
    pass 

bot.polling()