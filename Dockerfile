FROM python:3.7.3-stretch

## Step 1:
# Create a Working Directory
WORKDIR /app
ENV FLASK_ENV=development
## Step 2:
# Copy source code to working directory
COPY . app.py /app/

## Complete Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pipit.python.org -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 9000

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]