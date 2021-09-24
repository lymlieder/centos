FROM registry.cn-shanghai.aliyuncs.com/shkxmh/centos-java-test:1

RUN  yum -y install kde-l10n-Chinese telnet && \
	     yum -y reinstall glibc-common &&\
              yum clean all  && \
                localedef -c -f UTF-8 -i zh_CN zh_CN.utf8 
		
ENV LC_ALL "zh_CN.UTF-8"
