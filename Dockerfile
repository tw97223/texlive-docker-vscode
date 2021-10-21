FROM paperist/texlive-ja:latest
COPY ./latex_setting/latexmkrc /root/.latexmkrc
COPY ./latex_setting/fonts /root/fonts
COPY ./latex_setting/sty /root/sty
RUN tlmgr update --self
RUN tlmgr install newtx