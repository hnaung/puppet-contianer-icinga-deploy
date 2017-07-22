ec2_instance { 'Puppet-Client-1':
  ensure            => present,
  region            => 'ap-southeast-2',
  availability_zone => 'ap-southeast-2a',
  subnet            => 'Public_Icinga',
  image_id          => 'ami-21766642',
  instance_type     => 't2.micro',
  monitoring        => false,
  key_name          => 'Icinga_Lab',
  iam_instance_profile_name     => 'S3_Access',
  security_groups   => ['default'],
  user_data         => template('/home/ubuntu/deploy.sh'),
  tags              => {
    tag_name => 'test',
  },
}
