import {CPU} from "./CPU.js";

const cpuUrl = 'http://localhost:3000/api/cpus';

const app = {
    // data() {
    //     return {
    //         listeCpu:[],
    //         stock: 0
    //     }
    // },
    data() {
        return {
            listeCpu:[],
            stock: 0,
            cpuSelected: null
        }
    },
    async mounted() {
        let rep = await fetch(cpuUrl);
        let repForm = await rep.json();

        console.log(repForm);
        
        for (let cpu of repForm){
            let c = new CPU(cpu);
            this.listeCpu.push(c);
        }
        
        console.log(this.listeCpu);
    },
    computed: {

    },
    methods: {

    }
}

Vue.createApp(app).mount('#app');
