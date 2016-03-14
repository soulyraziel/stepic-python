rm /etc/nginx/sites-enabled/default
ln -s /home/box/web/hello.py /etc/gunicorn.d/hello.py
ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/gunicorn.conf
ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
gunicorn -c /etc/gunicorn.d/gunicorn.conf ask.wsgi&
#gunicorn -b 0.0.0.0:8080 hello:app &
