(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len a) 1000))
(assert (>= (str.len z) 1000))

(assert (= y (str.++ "72" a z "35" x "96")))

(assert (str.in_re x (re.* (re.union (re.range "3" "5") (re.++ (str.to_re "410") (str.to_re "258"))))))
(assert (str.in_re y (re.union (re.+ (re.range "2" "9")) (re.union (str.to_re "40") (re.* (str.to_re "999"))))))
(assert (str.in_re a (re.++ (str.to_re "725") (re.++ (re.+ (str.to_re "4")) (str.to_re "934")))))
(assert (str.in_re z (re.union (re.* (re.range "6" "9")) (str.to_re "154"))))

(assert (>= (+ (* 9 (str.len z)) (str.to_int x)) 12))

(check-sat)