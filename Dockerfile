FROM mcr.microsoft.com/playwright/python:v1.42.0-jammy

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .
EXPOSE 8501
CMD streamlit run app.py --server.port=$PORT --server.address=0.0.0.0

