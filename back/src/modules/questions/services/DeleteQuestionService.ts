import AppError from '@shared/errors/AppError';
import { getCustomRepository } from 'typeorm';
import QuestionRepository from '../typeorm/repositories/QuestionRepository';

interface IRequest {
  codigo: string;
}

class DeleteQuestionService {
  public async execute({ codigo }: IRequest): Promise<void> {
    const questionRepository = getCustomRepository(QuestionRepository);

    const question = await questionRepository.findOne(codigo);

    if (!question) {
      throw new AppError('Questão não localizada.');
    }

    await questionRepository.remove(question);
  }
}

export default DeleteQuestionService;
