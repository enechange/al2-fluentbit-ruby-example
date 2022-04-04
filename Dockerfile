FROM amazonlinux:2

COPY fluent-bit.repo /etc/yum.repos.d/
RUN yum install -y \
      fluent-bit \
      gcc \
      make \
      ruby-devel \
 && yum clean all \
 && amazon-linux-extras install ruby3.0

WORKDIR /work
COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY app.rb ./

CMD ["/opt/fluent-bit/bin/fluent-bit", "-i", "forward", "-o", "stdout"]
