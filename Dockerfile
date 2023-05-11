FROM python:3.7.7-stretch

## Complete Step 1:
# Create a Working Directory
WORKDIR /app

## Complete Step 2:
# Copy source code to working directory
COPY ./requirements.txt /app/requirements.txt
COPY . /app

## Complete Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
#hado
RUN pip install --upgrade pip &&\
	pip install -r requirements.txt

## Complete Step 4:
# Expose port 5000
EXPOSE 5000

## Complete Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]