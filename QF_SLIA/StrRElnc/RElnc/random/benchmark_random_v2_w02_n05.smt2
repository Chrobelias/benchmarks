(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "25" y)))

(assert (str.in_re y (re.* (re.* (re.++ (re.range "6" "8") (re.* (str.to_re "590")))))))
(assert (str.in_re x (re.union (str.to_re "54") (re.union (str.to_re "41") (re.+ (re.range "2" "7"))))))

(assert (> (+ (* (- 5) (str.to_int x)) (* (- 9) (str.to_int y))) 68))
(assert (>= (+ (* 10 (str.len x)) (* (- 8) (str.len y))) 82))

(check-sat)