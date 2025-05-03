import { Button, Stack } from 'tgui-core/components';

import { useBackend } from '../../../../../../backend';
import {
  CheckboxInput,
  Feature,
  FeatureChoiced,
  FeatureNumberInput,
  FeatureNumeric,
  FeatureSliderInput,
  FeatureToggle,
} from '../../base';
import { FeatureDropdownInput } from '../../dropdowns';

const FeatureBlooperDropdownInput = (props) => {
  const { act } = useBackend();
  return (
    <Stack>
      <Stack.Item grow>
        <FeatureDropdownInput {...props} />
      </Stack.Item>
      <Stack.Item>
        <Button
          onClick={() => {
            act('play_blooper');
          }}
          icon="play"
          width="100%"
          height="100%"
        />
      </Stack.Item>
    </Stack>
  );
};

export const blooper_pitch_range: FeatureNumeric = {
  name: 'Диапазон голоса персонажа',
  description:
    '[0,1 - 0,8] Меньшее число - меньший диапазон. Большее число - больший диапазон.',
  component: FeatureNumberInput,
};

export const blooper_speech: FeatureChoiced = {
  name: 'Голос персонажа',
  component: FeatureBlooperDropdownInput,
};

export const blooper_speech_speed: FeatureNumeric = {
  name: 'Скорость голоса персонажа',
  description:
    '[2 - 16] Меньшее число - более быстрая скорость. Большее число - более медленный голос.',
  component: FeatureNumberInput,
};

export const blooper_speech_pitch: FeatureNumeric = {
  name: 'Высота голоса персонажа',
  description:
    '[0,4 - 2] Меньшее число - более глубокий тон. Большее число - более высокий шаг.',
  component: FeatureNumberInput,
};

export const hear_sound_blooper: FeatureToggle = {
  name: 'Включить прослушивания барков (голосов)',
  category: 'ЗВУК',
  component: CheckboxInput,
};

export const sound_blooper_volume: Feature<number> = {
  name: 'Громкость барков (голосов)',
  category: 'ЗВУК',
  description: 'Громкость, с которой будут воспроизводиться барки.',
  component: FeatureSliderInput,
};

export const send_sound_blooper: FeatureToggle = {
  name: 'Включить отправку голосовых сообщений',
  category: 'ЗВУК',
  component: CheckboxInput,
};
