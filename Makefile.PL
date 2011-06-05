use inc::Module::Install;
use Module::Install::AuthorTests;

name 'App-mixi2gmail';
all_from 'lib/App/mixi2gmail.pm';

requires 'WWW::Mixi::Scraper' => 0.30;
requires 'Email::Sender';
requires 'Config::Pit';
requires 'DBD::SQLite';
requires 'DBI';
requires(
	'Net::SMTP::SSL' => 0,
	'Authen::SASL' => 0,
	'Email::MIME' => 0,
	'Email::MIME::CreateHTML' => 0,
	'Text::Xslate' => 0,
);

tests 't/*.t t/*/*.t t/*/*/*.t t/*/*/*/*.t';
test_requires 'Test::More' => 0.96; # done_testing, subtest
author_tests('xt');
WriteAll;
