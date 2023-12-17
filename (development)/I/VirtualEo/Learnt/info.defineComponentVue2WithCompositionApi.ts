/*
With the Composition API in Vue 2.x, 
you would normally use the defineComponent method to create a component, 
and you would not need to specify the three generic parameters for Props, State, and Emits 
like you would in Vue 3. 
*/

import { defineComponent, ref } from '@vue/composition-api';

export default defineComponent({
  props: {
    message: String,
  },
  setup(props) {
    const localState = ref(0); // Example of local state

    // Your setup logic here

    return {
      localState,
      // Any other properties you want to expose to the template
    };
  },
  // Other component options (data, computed, methods, etc.) can go here
});
