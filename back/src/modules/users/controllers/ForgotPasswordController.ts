import { Request, Response } from 'express';
import SendForgotPasswordEmailService from '../services/SendForgotPasswordEmailService';
import UserToken from '../typeorm/entities/UserToken';

export default class ForgotPasswordController {
  public async create(request: Request, response: Response): Promise<Response> {
    const { email } = request.body;
   

    const sendForgotPasswordEmail = new SendForgotPasswordEmailService();

    /*await sendForgotPasswordEmail.execute({
      email,
    });*/

    const token = await sendForgotPasswordEmail.execute({

      email,

    });
  
    console.log(token);
    
    return response.json({token});
  }
}
