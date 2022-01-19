<template>
  <div class="home">
    <div class="container-md">
      <br/>
      <br/>
      <div>
        <button class="btn btn-success">Create new person</button>
      </div>
      <br/>
      <table class="table table-striped table-bordered">
        <thead>
        <tr>
          <th>ID</th>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Age</th>
          <th>Email</th>
          <th>Edit</th>
        </tr>
        </thead>
        <tbody>
        <tr v-for="p in person.results">
          <td>{{p.id}}</td>
          <td>{{p.first_name}}</td>
          <td>{{p.last_name}}</td>
          <td>{{p.age}}</td>
          <td>{{p.email}}</td>
          <td>
            <button class="btn btn-info">Edit</button>
            <button v-on:click=remove(p.id) class="btn btn-danger">Delete</button>
          </td>
        </tr>
        </tbody>
      </table>
<!--      <nav aria-label="...">-->
<!--        <ul class="pagination">-->
<!--          <li class="page-item disabled">-->
<!--            <a class="page-link">Previous</a>-->
<!--          </li>-->
<!--          <li class="page-item"><a class="page-link" href="#">1</a></li>-->
<!--          <li class="page-item active" aria-current="page">-->
<!--            <a class="page-link" href="#">2 <span class="visually-hidden">(current)</span></a>-->
<!--          </li>-->
<!--          <li class="page-item"><a class="page-link" href="#">3</a></li>-->
<!--          <li class="page-item">-->
<!--            <a class="page-link" href="#">Next</a>-->
<!--          </li>-->
<!--        </ul>-->
<!--      </nav>-->
      <br/>
      <br/>
    </div>
  </div>
</template>

<style>
.table td {
  text-align: center;
}
.table th {
  text-align: center;
}
</style>

<script>
import axios from 'axios'
export default {
  data(){
    return {
      person: {}
    }
  },
  mounted() {
    axios.get('http://localhost/api/person/')
        .then(response => {
          console.log(response.data)
          this.person = response.data
        })
        .catch(function (error) {
          console.log(error);
        });
  },
  methods: {
    remove(id){
      console.log(`Remove item ${id}`)
      axios.delete(`http://localhost/api/person/${id}`);
    }
  }
}
</script>
