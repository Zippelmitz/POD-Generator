use 5.010; #Perl 5.10 minimum due to usage of undef or (//)
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME              => "POD::Generator",
    VERSION_FROM      => "lib/POD/Generator.pm",
    MIN_PERL_VERSION  => '5.010',
    TEST_REQUIRES     => {
        "Test::More"      => 0,
        "Scalar::Util"    => 0
    },
    PREREQ_PM => {
        "Carp"                => 0,
        "Scalar::Util"        => 0,
    },
    META_MERGE => {
        'meta-spec' => { version => 2 },
        name        => 'POD::Generator',
        abstract    => "Script and libraries for auto-generating POD for your modules",
        author      => ['George S. Baugh <teodesian@cpan.org>'],
        resources   => {
             repository => {
                 type => 'git',
                 url  => 'https://github.com/teodesian/POD-Generator.git',
                 web  => 'https://github.com/teodesian/POD-Generator',
             },
        },
        license => ['artistic_2'],
        prereqs => {
            runtime => {
                requires => {
                    'perl'                => '5.010',
                    "Carp"                => 0
                }
            },
            test => {
                requires => {
                    "Test::More"      => 0,
                    "Scalar::Util"    => 0
                },
            }
        },
        provides => {
            'POD::Generator' => {
                file    => 'lib/POD/Generator.pm',
                version => '0.001'
            },
            'Module::Documentation' => {
                file    => 'lib/POD/Generator.pm',
                version => '0.001'
            },
            'genpod' => {
                file    => 'bin/genpod',
                version => '0.001'
            }
        }
    }
);
