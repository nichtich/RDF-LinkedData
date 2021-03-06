use inc::Module::Install;

name     'RDF-LinkedData';
all_from 'lib/RDF/LinkedData.pm';
author   'Kjetil Kjernsmo <kjetilk@cpan.org>';
license  'perl';

test_requires 'FindBin';
test_requires 'Test::WWW::Mechanize::PSGI';
test_requires 'Test::More' => 0.88;
test_requires 'Test::RDF' => 0.20;
test_requires 'Test::Exception';
test_requires 'Test::NoWarnings';
test_requires 'Config::JFDI';
test_requires 'JSON';

requires 'Moose'			=> 0;
requires 'MooseX::Log::Log4perl::Easy'  => 0;
requires 'Log::Log4perl'		=> 0;
requires 'RDF::Trine'			=> 0.133;
requires 'Scalar::Util'			=> 0;
requires 'Plack'                        => 0.9939;
requires 'namespace::autoclean'         => 0;
requires 'HTTP::Headers'                => 0;
requires 'RDF::Helper::Properties'      => 0.10;
requires 'URI'                          => 1.52;

recommends 'Config::JFDI'               => 0; # If you plan to use the Plack script
recommends 'JSON'                       => 0; # If you plan to use the Plack script

install_script glob('script/*');

author_tests('xt');

auto_set_repository;
auto_set_bugtracker;

write_doap_changes;

sign;

WriteAll;

