import { Feature, FeatureChoiced, FeatureShortTextInput } from '../base';
import { FeatureDropdownInput } from '../dropdowns';

export const pda_theme: FeatureChoiced = {
  name: 'Тема для КПК',
  category: 'ГЕЙМПЛЕЙ',
  component: FeatureDropdownInput,
};

export const pda_ringtone: Feature<string> = {
  name: 'Мелодия КПК',
  component: FeatureShortTextInput,
};
