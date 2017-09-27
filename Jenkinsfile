pipeline {
    agent any	
    
    stages {
        stage('development build') {
	        when {
                allOf {
                    branch 'development' 
                }
            }
            steps {
	            withMaven( mavenSettingsConfig: 'ccd4e79c-a57d-49d8-b26a-cd4c8cfc8b4d' ) {
	            	bat 'mvn package deploy:deploy  -DskipTests'
	                }
            }
        }
        stage('development test') {
	        when {
                allOf {
                    branch 'development' 
                }
            }
            steps {
            	withMaven( mavenSettingsConfig: 'ccd4e79c-a57d-49d8-b26a-cd4c8cfc8b4d' ) {
                	bat 'mvn test -Dmunit.test=unit*'
            	}
            }
        }
        stage('development deploy') {
	        when {
                allOf {
                    branch 'development' 
                }
            }
            steps {
            	withMaven( mavenSettingsConfig: 'ccd4e79c-a57d-49d8-b26a-cd4c8cfc8b4d' ) {
                	bat 'mvn package mule:deploy -Dmule.env=dev -Danypoint.platform.environment=Development -DskipTests'
                }	
            }
        }
        stage('uat build') {
	        when {
                allOf {
                    branch 'testing' 
                }
            }
            steps {
            	withMaven( mavenSettingsConfig: 'ccd4e79c-a57d-49d8-b26a-cd4c8cfc8b4d' ) {
               		bat 'mvn package deploy:deploy -DskipTests'
           		}
            }
        }
        stage('uat test') {
	        when {
                allOf {
                    branch 'testing' 
                }
            }
            steps {
            	withMaven( mavenSettingsConfig: 'ccd4e79c-a57d-49d8-b26a-cd4c8cfc8b4d' ) {
                	bat 'mvn test -Dmunit.test=system*'
            	}
            }
        }
        stage('uat deploy') {
	        when {
                allOf {
                    branch 'testing' 
                }
            }
            steps {
            	withMaven( mavenSettingsConfig: 'ccd4e79c-a57d-49d8-b26a-cd4c8cfc8b4d' ) {
                	bat 'mvn package mule:deploy -Dmule.env=qa -Danypoint.platform.environment=UAT -DskipTests'
            	}
            }
        }
        stage('production build') {
	        when {
                allOf {
                    branch 'master' 
                }
            }
            steps {
            	withMaven( mavenSettingsConfig: 'ccd4e79c-a57d-49d8-b26a-cd4c8cfc8b4d' ) {
                	bat 'mvn package deploy:deploy -DskipTests'
            	}
            }
        }
        stage('production test') {
	        when {
                allOf {
                    branch 'master' 
                }
            }
            steps {
            	withMaven( mavenSettingsConfig: 'ccd4e79c-a57d-49d8-b26a-cd4c8cfc8b4d' ) {
                	bat 'mvn test -Dmunit.test=smoke*'
            	}
            }
        }
        stage('production deploy') {
	        when {
                allOf {
                    branch 'master' 
                }
            }
            steps {
	            input message: 'Proceed with deployment?', ok: 'Deploy'
	            withMaven( mavenSettingsConfig: 'ccd4e79c-a57d-49d8-b26a-cd4c8cfc8b4d' ) {
                	bat 'mvn package mule:deploy -Dmule.env=prd -Danypoint.platform.environment=Production -DskipTests'
            	}
            }
        }
    }
}