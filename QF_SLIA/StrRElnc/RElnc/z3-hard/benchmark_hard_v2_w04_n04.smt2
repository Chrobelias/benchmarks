(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "87" x)))

(assert (str.in_re x (re.++ (re.+ (re.range "4" "8")) (re.++ (re.range "4" "7") (re.+ (re.range "5" "7"))))))
(assert (str.in_re y (re.union (re.++ (str.to_re "8") (re.* (re.+ (re.range "4" "8")))) (str.to_re "10"))))

(assert (> (+ (* 8 (str.len x)) (* (- 5) (str.to_int x)) (* (- 9) (str.to_int y))) 66))
(assert (> (+ (* 2 (str.len y)) (* 4 (str.to_int x)) (* (- 9) (str.to_int y))) 62))

(check-sat)