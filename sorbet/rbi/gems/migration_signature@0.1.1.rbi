# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `migration_signature` gem.
# Please instead update this file by running `bin/tapioca gem migration_signature`.

# source://migration_signature//lib/migration_signature/config.rb#3
module MigrationSignature
  class << self
    # source://migration_signature//lib/migration_signature.rb#24
    def build_all; end

    # source://migration_signature//lib/migration_signature.rb#30
    def build_file(file); end

    # source://migration_signature//lib/migration_signature.rb#16
    def check_all; end

    # source://migration_signature//lib/migration_signature.rb#12
    def config; end
  end
end

# source://migration_signature//lib/migration_signature/config.rb#4
class MigrationSignature::Config
  # @return [Config] a new instance of Config
  #
  # source://migration_signature//lib/migration_signature/config.rb#22
  def initialize(opts = T.unsafe(nil)); end

  # source://migration_signature//lib/migration_signature/config.rb#26
  def all_runnable_files; end

  # @return [Boolean]
  #
  # source://migration_signature//lib/migration_signature/config.rb#40
  def ignore?(file); end

  # source://migration_signature//lib/migration_signature/config.rb#36
  def migration_dir; end

  private

  # source://migration_signature//lib/migration_signature/config.rb#54
  def regexp_ignores; end

  # source://migration_signature//lib/migration_signature/config.rb#58
  def string_ignores; end

  class << self
    # source://migration_signature//lib/migration_signature/config.rb#13
    def load; end
  end
end

# source://migration_signature//lib/migration_signature/config.rb#11
MigrationSignature::Config::CONFIG_FILE_PATH = T.let(T.unsafe(nil), String)

# source://migration_signature//lib/migration_signature/config.rb#5
MigrationSignature::Config::DEFAULTS = T.let(T.unsafe(nil), Hash)

# source://migration_signature//lib/migration_signature.rb#10
class MigrationSignature::InvalidSignatureError < ::StandardError; end

# source://migration_signature//lib/migration_signature/migration_file.rb#4
class MigrationSignature::MigrationFile
  # @return [MigrationFile] a new instance of MigrationFile
  #
  # source://migration_signature//lib/migration_signature/migration_file.rb#22
  def initialize(path_or_version); end

  # source://migration_signature//lib/migration_signature/migration_file.rb#53
  def basename; end

  # @return [Boolean]
  #
  # source://migration_signature//lib/migration_signature/migration_file.rb#26
  def ignore?; end

  # source://migration_signature//lib/migration_signature/migration_file.rb#30
  def update_signature!; end

  # @raise [MigrationSignature::InvalidSignatureError]
  #
  # source://migration_signature//lib/migration_signature/migration_file.rb#44
  def validate_signature!; end

  private

  # source://migration_signature//lib/migration_signature/migration_file.rb#86
  def lines; end

  # source://migration_signature//lib/migration_signature/migration_file.rb#70
  def new_source_signature_line; end

  # Returns the value of attribute path.
  #
  # source://migration_signature//lib/migration_signature/migration_file.rb#59
  def path; end

  # @return [Boolean]
  #
  # source://migration_signature//lib/migration_signature/migration_file.rb#78
  def signature?; end

  # source://migration_signature//lib/migration_signature/migration_file.rb#82
  def signature_line_number; end

  # source://migration_signature//lib/migration_signature/migration_file.rb#74
  def source_signature; end

  # @return [Boolean]
  #
  # source://migration_signature//lib/migration_signature/migration_file.rb#61
  def valid_signature?; end

  # source://migration_signature//lib/migration_signature/migration_file.rb#90
  def write_to_file(new_lines); end

  class << self
    # source://migration_signature//lib/migration_signature/migration_file.rb#7
    def resolve_full_name(path_or_version); end
  end
end

# source://migration_signature//lib/migration_signature/migration_file.rb#5
MigrationSignature::MigrationFile::MIGRATION_SIG_PREFIX = T.let(T.unsafe(nil), String)

# source://migration_signature//lib/migration_signature/railtie.rb#10
module MigrationSignature::MigratorEnhancement
  # source://migration_signature//lib/migration_signature/railtie.rb#21
  def migrate; end

  # source://migration_signature//lib/migration_signature/railtie.rb#11
  def run; end
end

# source://migration_signature//lib/migration_signature/railtie.rb#4
class MigrationSignature::Railtie < ::Rails::Railtie; end