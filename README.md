# 👐 Hands 👐

Splay your greasy paws across your cloud infrastructure.

## Installation

This thing is too fresh for RubyGems. Cut master:

    $ git clone https://github.com/pnc/hands.git
    $ cd hands
    $ bundle
    $ rake install

## Usage

You can set up your Amazon access key and secret as environment variables:

    export AWS_ACCESS_KEY=yourkeyhere
    export AWS_SECRET_KEY=somesecret/1aaa

Options:

                   --stack, -s <s>:   Run on instances that are part of a CloudFormation stack
                                        (wildcard is okay)
      --auto-scaling-group, -a <s>:   Run on instances that are part of the named auto scaling group
                    --name, -n <s>:   Run on instances with names that match
                                        (wildcard is okay) (default: *)
                  --region, -r <s>:   Limit command to the given comma-separated regions
                                        (wildcard is okay) (default: us-*)
                    --eval, -e <s>:   Evaluate Ruby expression for each instance
                                        (local variable called `instance`)
                --username, -u <s>:   Username for SSH login (default: ubuntu)
                --key-file, -k <s>:   Key file for SSH login
          --aws-access-key, -O <s>:   Defaults to the value of the AWS_ACCESS_KEY environment variable
          --aws-secret-key, -W <s>:   Defaults to the value of the AWS_SECRET_KEY environment variable
                     --version, -v:   Print version and exit
                        --help, -h:   Show this message

### Examples

Find out the public IP of all of your instances:

    hands -e "instance.ip_address"

Find out the uptime of all of your instances (across all US regions) that are in an auto-scaling group with "production" and "Web" in its name:

    hands -k ~/.ssh/some-key.pem -a "*production*Web*" uptime

Get the public DNS name of all of your instances with names that match "logs":

    hands -n "*logs*" -e "instance.dns_name"

For `eval`, you can use any method listed in the [AWS documentation](http://docs.aws.amazon.com/AWSRubySDK/latest/AWS/EC2/Instance.html).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
6. Profit!!1
