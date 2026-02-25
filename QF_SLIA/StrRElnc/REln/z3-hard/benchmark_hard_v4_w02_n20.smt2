(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re y (re.* (re.+ (re.union (str.to_re "23") (str.to_re "85"))))))
(assert (str.in_re a (re.++ (re.+ (str.to_re "8")) (re.++ (re.* (str.to_re "261")) (str.to_re "794")))))
(assert (str.in_re z (re.* (str.to_re "88"))))
(assert (str.in_re x (re.* (re.+ (re.union (str.to_re "6") (str.to_re "39"))))))

(assert (= (+ (* 9 (str.len x)) (- (str.to_int a))) 67))

(check-sat)