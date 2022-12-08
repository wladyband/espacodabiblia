import AppError from '@shared/errors/AppError';
import { getCustomRepository } from 'typeorm';
import User from '../typeorm/entities/User';
import { hash } from 'bcryptjs';
import UsersRepository from '../typeorm/repositories/UsersRepository';

interface IRequest {
  name: string;
  telephone: string;
  email: string;
  password: string;
}

class CreateUserService {
  public async execute({ name, email, telephone, password }: IRequest): Promise<User> {
    const usersRepository = getCustomRepository(UsersRepository);
    const emailExists = await usersRepository.findByEmail(email);

    if (emailExists) {
      throw new AppError('Email address already used.');
    }

    


    const user = usersRepository.create({
      name,
      telephone,
      email,
      password,
    });

    await usersRepository.save(user);

    return user;
  }
}

export default CreateUserService;