# Hands

Splay your greasy paws across your cloud infrastructure.

## Installation

    $ gem install hands

## Usage

You can set up your Amazon access key and secret as environment variables:

    export AWS_ACCESS_KEY=yourkeyhere
    export AWS_SECRET_KEY=somesecret/1aaa

Options:

                   --stack, -s <s>:   Run on instances that are part of a CloudFormation stack (wildcard is okay)
      --auto-scaling-group, -a <s>:   Run on instances that are part of the named auto scaling group
                    --name, -n <s>:   Run on instances with names that match (wildcard is okay) (default: *)
                  --region, -r <s>:   Limit command to the given comma-separated regions (wildcard is okay) (default: us-*)
                    --eval, -e <s>:   Evaluate Ruby expression for each instance (local variable called `instance`)
                --username, -u <s>:   Username for SSH login (default: ubuntu)
                --key-file, -k <s>:   Key file for SSH login
          --aws-access-key, -O <s>:   Defaults to the value of the AWS_ACCESS_KEY environment variable
          --aws-secret-key, -W <s>:   Defaults to the value of the AWS_SECRET_KEY environment variable
                     --version, -v:   Print version and exit
                        --help, -h:   Show this message

Find out the uptime of all of your instances (across all US regions) that are in an auto-scaling group with "production" and "Web" in its name:

    hands -k ~/.ssh/some-key.pem -a "*production*Web*" uptime

Get the public DNS name of all of your instances with names that match "logs":

    hands -n "*logs*" -e "instance.dns_name"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
6. Profit!!1
