AWSTemplateFormatVersion: '2010-09-09'
Description: 'Plantilla para crear grupo de seguridad, EC2 con perfil IAM'

Resources:
  ApplicationServerSecurityGroup:
    Type: AWS::EC2::SecurityGroup
    Properties:
      GroupDescription: Grupo de Seguridad para el puerto 8080
      GroupName: AppServerSecurityGroup
      SecurityGroupIngress:
        - IpProtocol: tcp
          FromPort: 80
          ToPort: 80
          CidrIp: 0.0.0.0/0
        - IpProtocol: tcp
          FromPort: 8080
          ToPort: 8080
          CidrIp: 0.0.0.0/0
        - IpProtocol: tcp
          FromPort: 22
          ToPort: 22
          CidrIp: 0.0.0.0/0

  ApplicationServerInstance:
    Type: AWS::EC2::Instance
    Properties:
      IamInstanceProfile: LabInstanceProfile
      ImageId: ami-06aa3f7caf3a30282
      InstanceType: t2.micro
      KeyName: vockey
      Tags:
        - Key: Name
          Value: instanciaVictor
      SecurityGroupIds:
        - !Ref ApplicationServerSecurityGroup