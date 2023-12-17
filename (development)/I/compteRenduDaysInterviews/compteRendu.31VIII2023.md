1. theorie
    abreviations
2. amelioration
    validation mail
3. comprehension
  - ajaxcall
      Angular use HttpClient with  XMLHttpRequest, without browser HttpClient would not function in a browser environment.
      
  - api proc

Ad.2. vee-validate
    <template>
  <div>
    <input v-model="email" v-validate="'required|email'" name="email">
    <span v-if="errors.has('email')">{{ errors.first('email') }}</span>
  </div>
</template>

<script>
import { required, email } from 'vee-validate/dist/rules';
import { extend } from 'vee-validate';

extend('required', required);
extend('email', email);

export default {
  data() {
    return {
      email: ''
    }
  }
}
</script>
