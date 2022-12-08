
import AppError from '@shared/errors/AppError';
import { getCustomRepository } from 'typeorm';
import Question from '../typeorm/entities/question';
import QuestionRepository from '../typeorm/repositories/QuestionRepository';

interface IRequest {
  codigo: string;
  question_details: string;
  question_title: string;
  option_a: number;
  option_b: number;
  option_c: number;
  option_d: number;
  option_e: number;
  answer_details: string;
  question_status: number;
  user_status: number;
}

class UpdateQuestionService {
  public async execute({
    codigo,
    question_details,
    question_title,
    option_a,
    option_b,
    option_c,
    option_d,
    option_e,
    answer_details,
    question_status,
    user_status,
  }: IRequest): Promise<Question> {
    const questionRepository = getCustomRepository(QuestionRepository);


    const question = await questionRepository.findOne(codigo);


    if (!question) {
      throw new AppError('Pergunta não localizada.');
    }


    const questionExists = await questionRepository.findByName(question_title);


    if (questionExists) {
      throw new AppError('Já existe uma Pergunta com esse titulo');
    }

    question.question_details = question_details,
    question.question_title = question_title,
    question.option_a = option_a,
    question.option_b = option_b,
    question.option_c = option_c,
    question.option_d = option_d,
    question.option_e = option_e,
    question.answer_details = answer_details,
    question.question_status = question_status,
    question.user_status = user_status,


    await questionRepository.save(question);




    return question;
  }
}

export default UpdateQuestionService;
