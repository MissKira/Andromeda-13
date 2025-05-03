// THIS IS A SKYRAT UI FILE
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

export const feature_penis: Feature<string> = {
  name: 'Выбор пениса',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const penis_skin_tone: FeatureToggle = {
  name: 'Пенис использует Тон кожи',
  component: CheckboxInput,
};

export const penis_skin_color: FeatureToggle = {
  name: 'Пенис использует Цвет кожи',
  component: CheckboxInput,
};

export const penis_color: Feature<string[]> = {
  name: 'Цвет пениса',
  component: FeatureTriColorInput,
};

export const penis_emissive: Feature<boolean[]> = {
  name: 'Эмиссары пениса',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const penis_sheath: Feature<string> = {
  name: 'Оболочка пениса',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const penis_length: FeatureNumeric = {
  name: 'Длина пениса',
  description:
    'Значение измеряется в дюймах.\
     Это значение ограничено 20 для персонажей с размером тела <= 1 \
     или без признака чрезмерной величины. Максимально допустимое значение увеличивается\
     в зависимости от размера тела персонажа, вплоть до 36.',
  component: FeatureNumberInput,
};

export const penis_girth: FeatureNumeric = {
  name: 'Обхват пениса',
  description:
    'Значение - это окружность, измеряемая в дюймах.\
    Это значение ограничено 15 для персонажей с размером тела <= 1 \
    или без признака чрезмерной величины. Максимально допустимое значение увеличивается\
    в зависимости от размера тела персонажа, до максимального значения 20.',
  component: FeatureNumberInput,
};

export const penis_taur_mode_toggle: FeatureToggle = {
  name: 'Режим пениса Таура',
  description:
    'Если у выбранного тела тавра есть спрайт пениса, он будет использован \
    вместо обычного.',
  component: CheckboxInput,
};

export const feature_testicles: Feature<string> = {
  name: 'Выбор яичек',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const testicles_skin_tone: FeatureToggle = {
  name: 'Яички используют Тон кожи',
  component: CheckboxInput,
};

export const testicles_skin_color: FeatureToggle = {
  name: 'Яички используют Цвет кожи',
  component: CheckboxInput,
};

export const testicles_color: Feature<string[]> = {
  name: 'Цвет яичек',
  component: FeatureTriColorInput,
};

export const testicles_emissive: Feature<boolean[]> = {
  name: 'Эмиссары яичек',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const balls_size: FeatureNumeric = {
  name: 'Размер яичек',
  component: FeatureNumberInput,
};

export const feature_vagina: Feature<string> = {
  name: 'Выбор вагины',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const vagina_skin_tone: FeatureToggle = {
  name: 'Вагина использует Тон кожи',
  component: CheckboxInput,
};

export const vagina_skin_color: FeatureToggle = {
  name: 'Вагина использует Цвет кожи',
  component: CheckboxInput,
};

export const vagina_color: Feature<string[]> = {
  name: 'Цвет вагины',
  component: FeatureTriColorInput,
};

export const vagina_emissive: Feature<boolean[]> = {
  name: 'Эмиссары вагины',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const feature_womb: Feature<string> = {
  name: 'Выбор матки',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const feature_breasts: Feature<string> = {
  name: 'Выбор груди',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const breasts_skin_tone: FeatureToggle = {
  name: 'Грудь использует Тон кожи',
  component: CheckboxInput,
};

export const breasts_skin_color: FeatureToggle = {
  name: 'Грудь использует Цвет кожи',
  component: CheckboxInput,
};

export const breasts_color: Feature<string[]> = {
  name: 'Цвет груди',
  component: FeatureTriColorInput,
};

export const breasts_emissive: Feature<boolean[]> = {
  name: 'Эмиссары груди',
  description: 'Детали светятся в темноте.',
  component: FeatureTriBoolInput,
};

export const breasts_lactation_toggle: FeatureToggle = {
  name: 'Грудная лактация',
  component: CheckboxInput,
};

export const breasts_size: Feature<string> = {
  name: 'Размер груди',
  component: (
    props: FeatureValueProps<string, string, FeatureChoicedServerData>,
  ) => {
    return <FeatureDropdownInput buttons {...props} />;
  },
};

export const feature_anus: Feature<string> = {
  name: 'Выбор ануса',
  component: FeatureDropdownInput,
};

export const body_size: FeatureNumeric = {
  name: 'Размер тела',
  component: FeatureNumberInput,
};

export const erp_status_pref: FeatureChoiced = {
  name: 'Статус ЕРП',
  description:
    'Все предпочтения по статусу ЕРП являются лишь маркерами для других игроков \
  о ваших предпочтениях в отношении различных широких категорий ЕРП. Выбрав «нет», вы практически изолируете себя от \
  всех направленных ЕРП.',
  component: FeatureDropdownInput,
};

export const erp_status_pref_nc: FeatureChoiced = {
  name: 'Статус ЕРП Non-Con (изнасилование)',
  component: FeatureDropdownInput,
};

export const erp_status_pref_v: FeatureChoiced = {
  name: 'Статус ЕРП воре',
  component: FeatureDropdownInput,
};

export const erp_status_pref_hypnosis: FeatureChoiced = {
  name: 'Статус ЕРП гипноза',
  component: FeatureDropdownInput,
};

export const erp_status_pref_mechanics: FeatureChoiced = {
  name: 'Статус ЕРП механа',
  component: FeatureDropdownInput,
};
