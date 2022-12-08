import { Router } from 'express';
import QuestionsController from '../controllers/QuestionsController';
import { celebrate, Joi, Segments } from 'celebrate';

const questionsRouter = Router();
const questionsController = new QuestionsController();

questionsRouter.get('/', questionsController.index);

questionsRouter.get(
  '/:id',
  celebrate({
    [Segments.PARAMS]: {
      id: Joi.string().uuid().required(),
    },
  }),
  questionsController.show,
);

questionsRouter.post(
  '/',
  celebrate({
    [Segments.BODY]: {
      question_details: Joi.string().required(),
      question_title: Joi.string().required(),
      option_a: Joi.number().required(),
      option_b: Joi.number().required(),
      option_c: Joi.number().required(),
      option_d: Joi.number().required(),
      option_e: Joi.number().required(),
      answer_details: Joi.string().required(),
      question_status: Joi.number().required(),
      user_status: Joi.number().required(),
    },
  }),
  questionsController.create,
);

questionsRouter.put(
  '/:id',
  celebrate({
    [Segments.PARAMS]: {
      id: Joi.string().uuid().required(),
    },
    [Segments.BODY]: {
      question_details: Joi.string().required(),
      question_title: Joi.string().required(),
      option_a: Joi.number().required(),
      option_b: Joi.number().required(),
      option_c: Joi.number().required(),
      option_d: Joi.number().required(),
      option_e: Joi.number().required(),
      answer_details: Joi.string().required(),
      question_status: Joi.number().required(),
      user_status: Joi.number().required(),
    },
  }),
  questionsController.update,
);

questionsRouter.delete(
  '/:id',
  celebrate({
    [Segments.PARAMS]: {
      id: Joi.string().uuid().required(),
    },
  }),
  questionsController.delete,
);

export default questionsRouter;
