FROM jenkins/jenkins:lts

# Switch to root user to install Docker
USER root
#
# Install Docker CLI
RUN apt-get update && \
    apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" && \
    apt-get update && \
    apt-get install -y docker-ce-cli

# Create docker group and add jenkins user to it
RUN groupadd docker 
RUN usermod -aG docker jenkins

# Install Docker Compose (optional)
RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

# Switch back to Jenkins user
USER jenkins

# Install Jenkins plugins
RUN jenkins-plugin-cli --plugins cloudbees-folder
RUN jenkins-plugin-cli --plugins configuration-as-code
RUN jenkins-plugin-cli --plugins credentials
RUN jenkins-plugin-cli --plugins github
RUN jenkins-plugin-cli --plugins instance-identity
RUN jenkins-plugin-cli --plugins job-dsl:1.87
RUN jenkins-plugin-cli --plugins script-security
RUN jenkins-plugin-cli --plugins structs
RUN jenkins-plugin-cli --plugins role-strategy
RUN jenkins-plugin-cli --plugins ws-cleanup
RUN jenkins-plugin-cli --plugins octopusdeploy:3.1.6

# Copy configuration files (if needed)
# COPY my_marvin.yml /var/jenkins_home/casc_configs/
# COPY .ENV /var/jenkins_home/casc_configs/
# COPY job_dsl.groovy /var/jenkins_home/casc_configs

# Environment setup (if needed)
# RUN set -o allexport; source /var/jenkins_home/casc_configs/.ENV; set +o allexport
# RUN source ./.ENV
FROM jenkins/jenkins:lts

# Switch to root user to install Docker
USER root

# Install Docker CLI
RUN apt-get update && \
    apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" && \
    apt-get update && \
    apt-get install -y docker-ce-cli

# Allow Jenkins user to access Docker CLI
RUN usermod -aG docker jenkins

# Install Docker Compose (optional)
RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

# Switch back to Jenkins user
USER jenkins

# Install Jenkins plugins
RUN jenkins-plugin-cli --plugins cloudbees-folder
RUN jenkins-plugin-cli --plugins configuration-as-code
RUN jenkins-plugin-cli --plugins credentials
RUN jenkins-plugin-cli --plugins github
RUN jenkins-plugin-cli --plugins instance-identity
RUN jenkins-plugin-cli --plugins job-dsl:1.87
RUN jenkins-plugin-cli --plugins script-security
RUN jenkins-plugin-cli --plugins structs
RUN jenkins-plugin-cli --plugins role-strategy
RUN jenkins-plugin-cli --plugins ws-cleanup
RUN jenkins-plugin-cli --plugins octopusdeploy:3.1.6
FROM jenkins/jenkins:lts

# Switch to root user to install Docker
USER root

# Install Docker CLI
RUN apt-get update && \
    apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" && \
    apt-get update && \
    apt-get install -y docker-ce-cli

# Create docker group and add jenkins user to it
RUN groupadd docker && usermod -aG docker jenkins

# Install Docker Compose (optional)
RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

# Switch back to Jenkins user
USER jenkins

# Install Jenkins plugins
RUN jenkins-plugin-cli --plugins cloudbees-folder
RUN jenkins-plugin-cli --plugins configuration-as-code
RUN jenkins-plugin-cli --plugins credentials
RUN jenkins-plugin-cli --plugins github
RUN jenkins-plugin-cli --plugins instance-identity
RUN jenkins-plugin-cli --plugins job-dsl:1.87
RUN jenkins-plugin-cli --plugins script-security
RUN jenkins-plugin-cli --plugins structs
RUN jenkins-plugin-cli --plugins role-strategy
RUN jenkins-plugin-cli --plugins ws-cleanup
RUN jenkins-plugin-cli --plugins octopusdeploy:3.1.6
