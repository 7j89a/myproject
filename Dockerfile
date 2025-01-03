FROM python:3.9-slim

# تحديث النظام وتثبيت ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# تعيين مجلد العمل داخل الحاوية
WORKDIR /app

# نسخ الملفات الخاصة بالسكربت إلى الحاوية
COPY . /app

# تثبيت الحزم المطلوبة
RUN pip install --no-cache-dir -r requirements.txt

# تحديد الأمر الذي سيتم تشغيله عند بدء الحاوية
CMD ["python", "bot.py"]
