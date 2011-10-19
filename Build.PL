use strict;
use warnings FATAL => 'all';
use Module::Build;

my $build = Module::Build->new(
    license              => 'perl',
    recursive_test_files => 1,
    dynamic_config       => 0,
    build_requires       => { 'Test::More' => '0.96' },
    configure_requires   => { 'Module::Build' => '0.38' },
    requires             => {
        'Email::Sender'           => '0',
        'DBD::SQLite'             => '0',
        'Email::MIME'             => '0',
        'Authen::SASL'            => '0',
        'Text::Xslate'            => '0',
        'Config::Pit'             => '0',
        'WWW::Mixi::Scraper'      => '0.3',
        'Email::MIME::CreateHTML' => '0',
        'perl'                    => '5.8.8',
        'Net::SMTP::SSL'          => '0',
        'DBI'                     => '0'
    },
    no_index    => { 'directory' => [ 'inc', 't', 'xt' ] },
    name        => 'App-mixi2gmail',
    module_name => 'App::mixi2gmail',
    script_files => ['mixi2gmail'],
    dist_abstract => 'mixi2gmail',

    test_files => ( -d '.git' || $ENV{RELEASE_TESTING} ) ? 't/ xt/' : 't/',

    create_readme  => 1,
    create_license => 1,
);
$build->create_build_script();
