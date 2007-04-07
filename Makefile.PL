use 5.006;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Mutt::Config',
    VERSION_FROM      => 'lib/Mutt/Config.pm', # finds $VERSION
    PREREQ_PM         => {
        "XML::LibXML"  => 0,
        "XML::LibXSLT" => 0,
        "Data::Dumper" => 0,
    },
    EXE_FILES         => [ "bin/mutt_config_write_module" ],
    ABSTRACT_FROM     => 'lib/Mutt/Config.pm', # retrieve abstract from module
    AUTHOR            => 'Luke Ross <luke@lukeross.name>'
);
