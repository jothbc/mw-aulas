import { Router } from 'express'
import ClearAllService from '../services/ClearAllService.js';

const api = Router();

api.get('/reset', async (request, response) => {
  try{
    const service = await ClearAllService();
    response.status(200).json({
      result: service,
    })
  }catch(err){
    response.status(400).json({error: 'Algo deu errado'})
  }
})

export default api