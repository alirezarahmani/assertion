## v0.2.5 2015-08-20

### Bugs Fixed

* Fixed required ruby version constraint (nepalez)

[Compare v0.2.4...v0.2.5](https://github.com/nepalez/assertion/compare/v0.2.4...v0.2.5)

## v0.2.4 2015-07-31

### Added

* Support for inline messages definition via `#falsey` and `#truthy` methods (nepalez)
* Alias method `!` for assertion `not` inverter (nepalez)

### Internal

* Moved names `:falsey` and `:truthy` from `Translator` to `Base` (nepalez)

[Compare v0.2.3...v0.2.4](https://github.com/nepalez/assertion/compare/v0.2.3...v0.2.4)

## v0.2.3 2015-07-12

The version is bumped to fix bugs that proved to be hidden because of bugs in hexx-rspec and hexx-suit gems.

### Bugs fixed

* Fixed incompatibility to ruby 1.9.3 (nepalez)
* Fixed Rakefile that tried to loade wrong version of Rake (nepalez)

### Internals

* Updated specs for compatibility to rubies 2.2-, jruby and rbx (nepalez)
* Switched to updated 'hexx-rspec' (nepalez)

[Compare v0.2.2...v0.2.3](https://github.com/nepalez/assertion/compare/v0.2.2...0.2.3)

## v0.2.2 2015-07-11

### Added

* New shared examples: `:validating_assertions`, and `:accepting_objects`
  to specify assertions and guards correspondingly (nepalez)

### Internal

* Switched to `ice_nine` gem to freezing objects deeply (nepalez)
* Switched to `inflecto` and dropped module own transformations (nepalez)

[Compare v0.2.1...v0.2.2](https://github.com/nepalez/assertion/compare/v0.2.1...0.2.2)

## v0.2.1 2015-06-23

### Bugs Fixed

* Support any values returned by `Base#check` method, not only boolean ones (nepalez)

### Internal

* `[]` caller method is extracted from `BaseDSL`, `Inverter`, and `GuardDSL` to `DSL::Caller` (nepalez)
* `GuardDSL` is splitted to `DSL::Caller` and `DSL::Attribute` (nepalez)
* `.attribute`, `.attributes` and `#attributes` extracted from `BaseDSL` to `DSL::Attributes` (nepalez)
* `BaseDSL` is splitted to `DSL::Attributes`, `DSL::Caller` and `DSL::Inversion` (nepalez)
* `DSL` is renamed to `DSL::Builder` to follow the convention. `DSL` is reserved for collection of DSLs (nepalez)

[Compare v0.2.0...v0.2.1](https://github.com/nepalez/assertion/compare/v0.2.0...v0.2.1)

## v0.2.0 2015-06-22

### Changed (backward-incompatible!)

* Renamed translation keys from `:right`/`:wrong` to `:truthy`/`:falsey` for consistency (nepalez)

### Internal

* Attributes are added to `Base` and `Guard` at the moment of definition,
  instead of the initializations (addresses efficiency issue #1) (nepalez)
* `Translator` replaced `Messages` and `List`(transproc) to invert dependency
  of `Base` from translations. (nepalez)
* Class-level DSL features are extracted from `Assertion`, `Base` and `Guard`
  to the separate modules `DSL`, `BaseDSL`, `GuardDSL` correspondingly (nepalez)

[Compare v0.1.0...v0.2.0](https://github.com/nepalez/assertion/compare/v0.1.0...v0.2.0)

## v0.1.0 2015-06-20

### Added

* New `Guard` base class for guarding objects (nepalez)
* New `Assertion.guards` builder method to provide specific guards (nepalez)
* Custom `Assertion::InvalidError#inspect` method that shows `#messages` (nepalez)

### Deleted

* Removed `Assertion::NotImplementedError` (use `NoMethodError` instead) (nepalez)
* Removed `Assertion::NameError` (use generic `NameError` instead) (nepalez)

### Internal

* Moved all message-related features to the `Assertion::Messages` (nepalez)
* Removed `Assertion::I18n` (not the part of public API) (nepalez)
* Extracted attribute DSL from `Assertion::Base` to `Assertion::Attributes` (nepalez)

[Compare v0.0.1...v0.1.0](https://github.com/nepalez/assertion/compare/v0.0.1...v0.1.0)
