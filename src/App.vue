<template>
  <div id="nav">
    <nav class="navbar navbar-light bg-light">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">
          <img
              src="https://mdbcdn.b-cdn.net/img/logo/mdb-transaprent-noshadows.webp"
              class="me-2"
              height="20"
              alt="MDB Logo"
              loading="lazy"/>
          <small>MDBootstrap</small>
        </a>
      </div>
    </nav>
    <template>
      <MDBTable striped></MDBTable>
    </template>
  </div>
  <router-view/>
</template>

<style>

</style>
<script>
import { MDBTable } from 'mdb-vue-ui-kit';
export default {
  components: {
    MDBTable,
  },
};
</script>
