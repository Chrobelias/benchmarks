(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.* (str.to_re "920")) (re.+ (str.to_re "6")))))
(assert (str.in_re y (re.* (re.++ (re.+ (re.+ (str.to_re "249"))) (str.to_re "1")))))

(assert (= (+ (* (- 3) (str.len x)) (* (- 2) (str.len y))) 72))
(assert (<= (* (- 4) (str.to_int x)) 19))

(check-sat)