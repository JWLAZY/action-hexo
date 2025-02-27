FROM swethark/centosnodejs

LABEL version="1.0.2"
LABEL repository="http://github.com/heowc/action-hexo"
LABEL homepage="https://heowc.github.io"
LABEL maintainer="heowc <heowc1992@gmail.com>"

LABEL com.github.actions.name="GitHub Action for hexo"
LABEL com.github.actions.description="Wraps the hexo CLI to enable common hexo commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="red"

RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak
ADD ./source.list /etc/apt/sources.list
RUN apt-get clean 
RUN apt-get autoremove

RUN npm install --unsafe-perm -g hexo

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
