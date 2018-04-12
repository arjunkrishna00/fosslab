#!/usr/bin/perl
use strict;
use warnings;

#create message
use Email::MIME;
my $message = Email::MIME->create(
  header_str => [
    From    => 'abhishekpnambissan@gmail.com',
    To      => 'abhishekp.mec@gmail.com',
    Subject => 'First Perl Experience!',
  ],
  attributes => {
    encoding => 'quoted-printable',
    charset  => 'ISO-8859-1',
  },
  body_str => "Hellow World\n",
);

#send  message
use Email::Sender::Simple qw(sendmail);
sendmail($message);
