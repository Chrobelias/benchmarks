(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.+ (re.* (re.++ (re.+ (str.to_re "72")) (str.to_re "9"))))))
(assert (str.in_re y (re.union (re.++ (str.to_re "12") (re.+ (str.to_re "176"))) (re.+ (str.to_re "30")))))
(assert (str.in_re z (re.* (re.++ (re.* (str.to_re "395")) (re.* (str.to_re "248"))))))
(assert (str.in_re a (re.union (str.to_re "87") (re.* (re.+ (str.to_re "680"))))))
(assert (str.in_re b (re.+ (re.+ (re.+ (str.to_re "450"))))))

(assert (= (+ (* (- 9) (str.len x)) (* 8 (str.len a)) (- (str.to_int a))) 93))

(check-sat)