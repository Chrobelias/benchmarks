(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "66" y)))

(assert (str.in_re x (re.union (str.to_re "338") (re.+ (re.+ (re.range "1" "7"))))))
(assert (str.in_re y (re.union (re.++ (re.* (str.to_re "19")) (str.to_re "1")) (re.range "2" "4"))))

(assert (< (+ (- (str.len y)) (* 2 (str.to_int y))) 21))
(assert (= (+ (* (- 3) (str.len y)) (* (- 7) (str.to_int x))) 90))

(check-sat)