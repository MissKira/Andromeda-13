import {
  CheckboxInput,
  Feature,
  FeatureChoiced,
  FeatureChoicedServerData,
  FeatureNumberInput,
  FeatureNumeric,
  FeatureToggle,
  FeatureTriBoolInput,
  FeatureTriColorInput,
  FeatureValueProps,
} from '../../base';
import { FeatureDropdownInput } from '../../dropdowns';

export const scaled_appearance: FeatureToggle = {
  name: 'Чёткость внешнего вида',
  description: 'Придайте своему персонажу резкий или нечеткий вид.',
  component: CheckboxInput,
};

export const feature_butt: Feature<string> = {
  name: 'Выбор задницы',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const butt_skin_tone: FeatureToggle = {
  name: 'Задница использует Тон кожи',
  component: CheckboxInput,
};

export const butt_skin_color: FeatureToggle = {
  name: 'Задница использует Цвет кожи',
  component: CheckboxInput,
};

export const butt_color: Feature<string[]> = {
  name: 'Цвет задницы',
  component: FeatureTriColorInput,
};

export const butt_emissive: Feature<boolean[]> = {
  name: 'Эмиссары задницы',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const butt_size: FeatureNumeric = {
  name: 'Размер задницы',
  component: FeatureNumberInput,
};

export const anus_skin_tone: FeatureToggle = {
  name: 'Анус использует Тон кожи',
  component: CheckboxInput,
};

export const anus_skin_color: FeatureToggle = {
  name: 'Анус использует Цвет кожи',
  component: CheckboxInput,
};

export const anus_color: Feature<string[]> = {
  name: 'Цвет Ануса',
  component: FeatureTriColorInput,
};

export const anus_emissive: Feature<boolean[]> = {
  name: 'Эмиссары ануса',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const feature_belly: Feature<string> = {
  name: 'Выбор живота',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const belly_size: FeatureNumeric = {
  name: 'Размер живота',
  component: FeatureNumberInput,
};

export const belly_skin_tone: FeatureToggle = {
  name: 'Живот использует Тон кожи',
  component: CheckboxInput,
};

export const belly_skin_color: FeatureToggle = {
  name: 'Живот использует Цвет кожи',
  component: CheckboxInput,
};

export const belly_color: Feature<string[]> = {
  name: 'Цвет живота',
  component: FeatureTriColorInput,
};

export const belly_emissive: Feature<boolean[]> = {
  name: 'Эмиссары живота',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const erp_status_pref_extm: FeatureChoiced = {
  name: 'Экстремальное ЕРП',
  component: FeatureDropdownInput,
};

export const erp_status_pref_extmharm: FeatureChoiced = {
  name: 'Максимально экстремальное ЕРП',
  component: FeatureDropdownInput,
};

export const erp_status_pref_unholy: FeatureChoiced = {
  name: 'Грязное ЕРП',
  component: FeatureDropdownInput,
};

export const erp_lust_tolerance_pref: FeatureNumeric = {
  name: 'Множитель толерантности к похоти',
  description:
    'Установите множитель толерантности похоти. \n(0.5 = половинная толерантность, 2 = двойная толерантность)',
  component: FeatureNumberInput,
};

export const erp_sexual_potency_pref: FeatureNumeric = {
  name: 'Множитель сексуальной потенции',
  description:
    'Установите множитель сексуальной потенции. \n(0.5 = половина потенции, 2 = двойная потенция)',
  component: FeatureNumberInput,
};

// Genital fluid preferences
export const testicles_fluid: FeatureChoiced = {
  name: 'Жидкость яичек',
  description: 'Тип жидкости, вырабатываемой яичками.',
  component: FeatureDropdownInput,
};

export const breasts_fluid: FeatureChoiced = {
  name: 'Жидкость груди',
  description: 'Тип жидкости, вырабатываемой грудью.',
  component: FeatureDropdownInput,
};

export const vagina_fluid: FeatureChoiced = {
  name: 'Жидкость влагины',
  description: 'Тип жидкости, вырабатываемой влагалищем.',
  component: FeatureDropdownInput,
};

export const cumflates_partners_pref: FeatureToggle = {
  name: 'Кончать от партнёров',
  description: 'Ваш персонаж кончает с партнером.',
  component: CheckboxInput,
};
