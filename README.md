POD-Generator
=============

Tools for generating POD for Perl Module files

Provides a tool 'genpod' [options] module1 module2 ...

Generates POD based on the module, with varying levels of detail based
on whether you use nice modern features of perl, or are a cave-man/gal.

* NAME will be auto-populated
* SYNOPSIS and METHODS (or FUNCTIONS in modules without constructors) section will be skeletoned.
* Usage of Method signatures (moose or perl) will auto-populate input parameters for methods/functions.
* Usage of Type Constraints with your Signatures will correctly note the types of your input parameters, and list any custom types you define.
* Alternately, if you use Carp::Assert for your guard clauses, it will 'magic' into being custom types based on your assertions and act as though you use Method::Signatures!
* 'Module::Description' is provided to say a bit about various things:

        package MY::MODULE;

        use Module::Documentation;
        doc(&Module::Documentation::SYNOPSIS,"This here is my rip-roarin' Texan synopsis (yee-haw)");

        doc(&MY::MODULE::SOME_FUNC,"Thar be my method documentation, arr");
        sub SOME_FUNC {...}

        ...

        doc(&Module::Documentation::AUTHORS,"Slick Willie <42@whitehaus.guv>")
        doc(&Module::Documentation::NOTES, "This module is bogus");
        doc(&Module::Documentation::SEE_ALSO, qw{Your::Mom Dog::Walker});

* If your super-awesome methods manage to deliberately die/croak/confess/exit or otherwise do things to terminate execution, this is automatically noted, along with the messages/codes/types as applicable.
* Will even try to auto-fill your return type if you assert() (or apply a type constraint to) it immediately before (or during) return!
* If you are writing a script, it will do it's best to figure out what you are doing with ARGV, or give you better details when you use some sort of GetOpt.
* 'private' functions (such as those beginning with underscores), or methods that are explicitly private will be ignored correctly.

So why should I do this?????  I LOVE WASTING TIME, MAN!  Don't you know I'm paid by the hour???!

* Telling people things like *how to actually use your functions* might mean less emailed death threats!
* Not having to manually fill in all this sort of stuff that MetaCPAN and Kwalitee wants in your doc anyways is good!
* Knowing when a method dies makes it easy to use TryCatch to make your life easier!  Or, to do standard eval trapping correctly until you get arthritis!
* Not having to learn yet another way to format documents sure is nice for cranky people who feel like everything since $FORMATTING_LANGUAGE_OF_CHOICE is a step backwards!
* Having yet another reason to entice lazy troglodytes into the 21st century certainly can't hurt the perl community...

As always, just install it on CPAN and read it's SUPER-FANCY *automatically generated* documentation for more info!
