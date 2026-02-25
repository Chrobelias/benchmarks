(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (re.+ (str.to_re "992")) (re.union (re.* (str.to_re "4")) (str.to_re "684")))))
(assert (str.in_re y (re.++ (re.union (re.* (str.to_re "17")) (str.to_re "251")) (re.* (str.to_re "340")))))

(assert (<= (+ (* 3 (str.to_int x)) (* (- 9) (str.to_int y))) 28))
(assert (> (+ (* 8 (str.len y)) (* 5 (str.to_int y))) 100))

(check-sat)