FROM python:3.9

# NO working directory in the container

# Add requirements file in the container
COPY requirements.txt ./requirements.txt

# install dependencies
RUN pip install -r requirements.txt

# Add source code in the container
COPY main.py ./main.py

CMD ["python", "main.py"]
