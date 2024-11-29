# Base image for AWS Lambda Python runtime
FROM public.ecr.aws/lambda/python:3.9

# Copy application code
COPY app.py ./
COPY requirements.txt ./

EXPOSE 8000
# Install dependencies
RUN pip install -r requirements.txt

# Command for AWS Lambda to invoke the handler
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
