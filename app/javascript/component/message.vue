<template>
  <div id="container">
    <p>{{ storeMessage }}</p>
    <p>{{ componentMessage }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      componentMessage: 'with Vuex and Vue Router.',
    };
  },
  computed: {
    storeMessage() {
      return this.$store.getters.getMessage;
    },
  },
};
</script>
