class profiles::jenkins {

  file { [
    '/home/tomcat',
    '/home/tomcat/.jenkins',
    ]:
    ensure => directory,
    owner  => $tomcat::user,
    group  => $tomcat::group,
  }

  tomcat::war { 'jenkins.war':
    catalina_base => '/opt/tomcat',
    war_source    => 'http://mirrors.jenkins-ci.org/war-stable/latest/jenkins.war',
  }

}
