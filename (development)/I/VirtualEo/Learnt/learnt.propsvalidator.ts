export default defineComponent<any, any, any>({
    props: {
      classroomId: {
        required: false,
        type: String,
        validator: (value) => {
        // Perform your custom validation here.
        // If it passes, return true. If not, return false.
        // For example, to check if the value is a positive integer or undefined:
        if (value === undefined){
          console.log('return true; // Allow undefined values')
          return true; // Allow undefined values
        }
        const numValue = Number(value);
        if(Number.isInteger(numValue) && numValue > 0) {
          console.log('if(Number.isInteger(numValue) && numValue > 0) {')
          return true; 
        }else {
          console.log('        vxm.snackbar.ShowErrorSnackbar({')

          vxm.snackbar.ShowErrorSnackbar({
              text: `Invalid URL parameter ${value}: The provided parameter does not meet the required format.`,
            });
          return false; 
        };
        }
      },
    },
    setup(props) {
  