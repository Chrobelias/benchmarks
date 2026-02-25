(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.union (re.++ (re.+ (str.to_re "44")) (str.to_re "246")) (str.to_re "54"))))
(assert (str.in_re x (re.* (re.++ (str.to_re "46") (re.* (str.to_re "188"))))))
(assert (str.in_re z (re.* (re.union (str.to_re "827") (re.++ (str.to_re "42") (re.range "2" "7"))))))

(assert (= (+ (* (- 10) (str.len x)) (* (- 4) (str.len y)) (* 5 (str.len z))) 70))
(assert (> (+ (* (- 2) (str.to_int x)) (* (- 6) (str.to_int y)) (str.to_int z)) 83))

(check-sat)