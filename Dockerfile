FROM python:3.8.5-alpine
COPY . /main
WORKDIR /main
RUN apk add gcc musl-dev python3-dev libffi-dev openssl-dev
RUN pip3 install pymysql
RUN pip3 install markupsafe
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
