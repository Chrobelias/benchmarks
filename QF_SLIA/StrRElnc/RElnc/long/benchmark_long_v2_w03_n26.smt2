(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (= y (str.++ x "24")))

(assert (str.in_re x (re.+ (re.union (re.* (re.range "1" "4")) (str.to_re "739")))))
(assert (str.in_re y (re.* (re.* (re.* (re.* (re.range "1" "5")))))))

(assert (= (* 10 (str.to_int y)) 11))
(assert (>= (+ (* 5 (str.len x)) (str.len y)) 96))
(assert (> (+ (* (- 5) (str.len x)) (* 7 (str.len y))) 33))

(check-sat)