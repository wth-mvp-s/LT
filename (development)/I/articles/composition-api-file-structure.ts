<template>
 
</template>

<script lang="ts">
import { computed, defineComponent, onBeforeMount, ref, watch } from "@vue/composition-api";
import { vxm } from "@/store";

export default defineComponent({
  components: {
    ...
  },

  props: {
    classroomId: {
      required: false,
      type: String,
    },
  },
  setup(props) {
    //#region 1.ReactiveReferences
    const showStartTimePicker = ref(false);
    //#endregion 1.ReactiveReferences

    //#region 2.ComputedProperties
    const loading = computed(() => vxm.administration.loading);
    
    // Lifecycle hooks
    onBeforeMount(async () => {
		// async really needed ? 
		...
    });
    //#endregion 2.ComputedProperties

    //#region 3.Methods
	
	//Function Declarations valid:
    function verifySelectedPack() {
		...
    }
    
	//Arrow functions are valid too.
    const handleChildButtonClick = () => {
      ...
    };
	
    //#endregion 3.Methods

    //#region 4.Watchers
    watch(() => props.classroomId, updateHeader, { immediate: true });
    
    //#endregion 4.Watchers

    return {
		value, // if used in the template
		computedValue, // if used in the template
		doSomething, // if used in the template
		// Ensure you are returning all the necessary reactive references, computed properties, and methods that you will be using in the template.
		//
		// Anything that is not going to be used in the template does not need to be returned.
      
    };
  },
});
</script>
<style lang="scss" scoped>
.listItem {
  min-height: 25px;
}
</style>