(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.+ (re.union (re.range "7" "9") (re.union (str.to_re "2") (str.to_re "59"))))))
(assert (str.in_re x (re.+ (re.++ (re.* (str.to_re "76")) (re.* (str.to_re "7"))))))

(assert (>= (+ (* 5 (str.len y)) (str.to_int x)) 56))
(assert (> (+ (* (- 6) (str.to_int x)) (* (- 4) (str.to_int y))) 81))

(check-sat)