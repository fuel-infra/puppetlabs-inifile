require 'spec_helper'

describe 'create_multiple_ini_settings' do
  context 'on a non-Windows platform', if: !Puppet.features.microsoft_windows? do
    let(:facts) do
      { 'os' => { 'family'  => 'RedHat',
                  'release' => { 'major' => '7',
                                 'minor' => '1',
                                 'full'  => '7.1.1503' } } }
    end

    it { is_expected.to compile }
  end

  context 'on a Windows platform', if: Puppet.features.microsoft_windows? do
    let(:facts) do
      { 'os' => { 'family'  => 'windows',
                  'release' => { 'major' => '10',
                                 'full'  => '10' } } }
    end

    it { is_expected.to compile }
  end
end
